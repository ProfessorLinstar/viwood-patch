.class public Lcom/android/server/policy/WakeGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "WakeGestureListener.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/WakeGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WakeGestureListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {p1}, Lcom/android/server/policy/WakeGestureListener;->-$$Nest$fgetmLock(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/WakeGestureListener;->-$$Nest$fputmTriggerRequested(Lcom/android/server/policy/WakeGestureListener;Z)V

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {v0}, Lcom/android/server/policy/WakeGestureListener;->-$$Nest$fgetmHandler(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {p0}, Lcom/android/server/policy/WakeGestureListener;->-$$Nest$fgetmWakeUpRunnable(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
