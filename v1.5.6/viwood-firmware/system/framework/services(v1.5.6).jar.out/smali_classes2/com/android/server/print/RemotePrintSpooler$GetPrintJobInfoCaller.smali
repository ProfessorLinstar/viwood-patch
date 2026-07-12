.class public final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# instance fields
.field public final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 746
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 747
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;Ljava/lang/Object;I)V
    .locals 0

    .line 742
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 2

    .line 757
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, v1, p3, v0}, Landroid/print/IPrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    .line 759
    invoke-virtual {p0, v0}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintJobInfo;

    return-object p0
.end method
