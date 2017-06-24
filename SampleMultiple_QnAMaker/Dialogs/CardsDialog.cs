using Microsoft.Bot.Builder.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Microsoft.Bot.Connector;
using System.Net;
using Newtonsoft.Json;

namespace SampleMultiple_QnAMaker.Dialogs
{
    [Serializable]
    public class CardsDialog : IDialog<object>
    {
        private static DataMapper mapper = new DataMapper();
        //public IEnumerable<string> options = mapper.GetQuestions();
        public static string Message { get; set; }
       
       
       
        public async Task StartAsync(IDialogContext context)
        {
            context.Wait(this.MessageReceivedAsync);
            
        }

        public async virtual Task MessageReceivedAsync(IDialogContext context, IAwaitable<IMessageActivity> result)
        {
            var message = await result;

            PromptDialog.Choice<string>(
                context,
                this.DisplaySelectedCard,
                mapper.GetQuestions(Message),
                "Do you mean by any of  the follwoing questions?",
                null,
               100,
                PromptStyle.Auto);
        }

        public async Task DisplaySelectedCard(IDialogContext context, IAwaitable<string> result)
        {
            var selectedQuestion = await result;

            var message = mapper.GetQAndAMaker(selectedQuestion);
            await context.PostAsync(message);
            context.Wait(this.MessageReceivedAsync);
            context.Reset();
        }
       
    }
}