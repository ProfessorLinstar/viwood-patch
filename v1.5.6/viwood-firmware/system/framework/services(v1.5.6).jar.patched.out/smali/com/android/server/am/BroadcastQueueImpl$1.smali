.class public Lcom/android/server/am/BroadcastQueueImpl$1;
.super Landroid/app/UidObserver;
.source "BroadcastQueueImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 1828
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {p3}, Lcom/android/server/am/BroadcastQueueImpl;->-$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    invoke-virtual {p3, p5, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1829
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueImpl;->-$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p5, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1830
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
