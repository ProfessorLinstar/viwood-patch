.class public Lcom/android/server/wm/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/VrController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/VrController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {v0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmGlobalAmLock(Lcom/android/server/wm/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v3, 0x3

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/wm/VrController;->-$$Nest$msetVrRenderThreadLocked(Lcom/android/server/wm/VrController;IIZ)I

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/wm/VrController;->-$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p1, v2, v1}, Lcom/android/server/wm/VrController;->-$$Nest$msetPersistentVrRenderThreadLocked(Lcom/android/server/wm/VrController;IZ)I

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {p0}, Lcom/android/server/wm/VrController;->-$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I

    move-result p1

    and-int/lit8 p1, p1, -0x3

    invoke-static {p0, p1}, Lcom/android/server/wm/VrController;->-$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V

    .line 125
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
