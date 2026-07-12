.class public final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# instance fields
.field public final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 767
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 768
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;Ljava/lang/Object;I)V
    .locals 0

    .line 763
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 6

    .line 778
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v5

    .line 779
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 780
    invoke-virtual {p0, v5}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
