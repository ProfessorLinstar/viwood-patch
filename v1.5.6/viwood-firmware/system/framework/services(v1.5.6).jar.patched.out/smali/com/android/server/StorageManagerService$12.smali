.class public Lcom/android/server/StorageManagerService$12;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# instance fields
.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V
    .locals 0

    .line 2773
    iput-object p2, p0, Lcom/android/server/StorageManagerService$12;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 2780
    iget-object p1, p0, Lcom/android/server/StorageManagerService$12;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2781
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$12;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    return-void
.end method
