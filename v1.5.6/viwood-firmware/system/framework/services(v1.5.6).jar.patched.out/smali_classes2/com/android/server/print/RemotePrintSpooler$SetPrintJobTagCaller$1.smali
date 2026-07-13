.class public Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler-IA;)V

    return-void
.end method


# virtual methods
.method public onSetPrintJobTagResult(ZI)V
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$300(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void
.end method
