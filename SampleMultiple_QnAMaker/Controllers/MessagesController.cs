using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Connector;
using SampleMultiple_QnAMaker.Dialogs;
using System.Threading;
using Microsoft.Bot.Builder.Dialogs.Internals;
using Autofac;


namespace SampleMultiple_QnAMaker
{
    [BotAuthentication]
    public class MessagesController : ApiController
    {
        private DataMapper dataMapper = new DataMapper();
        /// <summary>
        /// POST: api/Messages
        /// Receive a message from a user and reply to it
        /// </summary>
        public async Task<HttpResponseMessage> Post([FromBody]Activity activity)
        {
            var connector = new ConnectorClient(new Uri(activity.ServiceUrl));
            if (activity.Type == ActivityTypes.Message)
            {
                if (!IsDataAvaliable())
                {
                    dataMapper.SaveExcelDataToDB();
                }
                CardsDialog.Message =  activity.Text;
                if (dataMapper.CheckQuestions(activity.Text))
                {
                    var replyMessage = activity.CreateReply(dataMapper.GetQAndAMaker(activity.Text));                    
                    await connector.Conversations.ReplyToActivityAsync(replyMessage);
                }
                else
                {
                    await Conversation.SendAsync(activity, () => new CardsDialog());
                    using (var scope = DialogModule.BeginLifetimeScope(Conversation.Container, activity))
                    {
                        var botData = scope.Resolve<IBotData>();
                        await botData.LoadAsync(default(CancellationToken));
                        var stack = scope.Resolve<IDialogStack>();
                        stack.Reset();
                        await botData.FlushAsync(default(CancellationToken));
                    }
                }

                //await Conversation.SendAsync(activity, () => new Dialogs.RootDialog());
                
            }
            else
            {
   
                
                HandleSystemMessage(activity);
            }
            var response = Request.CreateResponse(HttpStatusCode.OK);
            return response;
        }

        private bool IsDataAvaliable()
        {
            return dataMapper.IsDataAvaliable();
        }

        private Activity HandleSystemMessage(Activity message)
        {
            if (message.Type == ActivityTypes.DeleteUserData)
            {
                // Implement user deletion here
                // If we handle user deletion, return a real message
            }
            else if (message.Type == ActivityTypes.ConversationUpdate)
            {
                // Handle conversation state changes, like members being added and removed
                // Use Activity.MembersAdded and Activity.MembersRemoved and Activity.Action for info
                // Not available in all channels
            }
            else if (message.Type == ActivityTypes.ContactRelationUpdate)
            {
                // Handle add/remove from contact lists
                // Activity.From + Activity.Action represent what happened
            }
            else if (message.Type == ActivityTypes.Typing)
            {
                // Handle knowing tha the user is typing
            }
            else if (message.Type == ActivityTypes.Ping)
            {
            }

            return null;
        }
    }
}