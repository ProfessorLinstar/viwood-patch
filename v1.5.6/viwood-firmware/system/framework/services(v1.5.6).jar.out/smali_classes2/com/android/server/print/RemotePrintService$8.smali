.class public Lcom/android/server/print/RemotePrintService$8;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$printerIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$8;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$8;->val$printerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$8;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$8;->val$printerIds:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method
