.class public final Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# instance fields
.field public final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 851
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 852
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method

.method public static synthetic access$600(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;Ljava/lang/Object;I)V
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 862
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, v1, v0}, Landroid/print/IPrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 864
    invoke-virtual {p0, v0}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0
.end method
