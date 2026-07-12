.class public final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# instance fields
.field public final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 724
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 725
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;Ljava/lang/Object;I)V
    .locals 0

    .line 719
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 6

    .line 736
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v5

    .line 737
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 738
    invoke-virtual {p0, v5}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
