.class public Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler-IA;)V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 1

    .line 834
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->access$500(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;Ljava/lang/Object;I)V

    return-void
.end method
