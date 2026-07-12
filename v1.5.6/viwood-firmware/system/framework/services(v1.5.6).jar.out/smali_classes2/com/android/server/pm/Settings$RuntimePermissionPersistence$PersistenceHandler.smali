.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$PersistenceHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .locals 0

    .line 6618
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$PersistenceHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 6619
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 6624
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$PersistenceHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$mwritePendingStates(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    return-void
.end method
