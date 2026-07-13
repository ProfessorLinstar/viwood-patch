.class public Lcom/android/server/print/RemotePrintService$5;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$5;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$5;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleDestroyPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method
