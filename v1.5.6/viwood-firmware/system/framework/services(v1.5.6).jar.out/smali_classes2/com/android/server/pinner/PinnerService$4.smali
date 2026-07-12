.class public Lcom/android/server/pinner/PinnerService$4;
.super Landroid/app/UidObserver;
.source "PinnerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public static synthetic $r8$lambda$uIwPx-PfZneISkHXky6n-dasd6g(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mhandleUidActive(Lcom/android/server/pinner/PinnerService;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zn9yx-8hgftZMcZVMIzK-q3RXh8(Lcom/android/server/pinner/PinnerService;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mhandleUidGone(Lcom/android/server/pinner/PinnerService;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$4;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$4;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/pinner/PinnerService;)Lcom/android/server/pinner/PinnerService$PinnerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$4$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pinner/PinnerService$4$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$4;->this$0:Lcom/android/server/pinner/PinnerService;

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 423
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    .line 417
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService$4;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {p2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnerHandler(Lcom/android/server/pinner/PinnerService;)Lcom/android/server/pinner/PinnerService$PinnerHandler;

    move-result-object p2

    new-instance v0, Lcom/android/server/pinner/PinnerService$4$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$4$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$4;->this$0:Lcom/android/server/pinner/PinnerService;

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 417
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
