.class public Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler-IA;)V

    return-void
.end method


# virtual methods
.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->access$100(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;Ljava/lang/Object;I)V

    return-void
.end method
