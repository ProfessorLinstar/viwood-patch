.class public final Lcom/android/server/wm/AppWarnings$WriteConfigTask;
.super Ljava/lang/Object;
.source "AppWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/AppWarnings-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;-><init>(Lcom/android/server/wm/AppWarnings;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 864
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 866
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mwriteConfigToFile(Lcom/android/server/wm/AppWarnings;Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method public schedule()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v2}, Lcom/android/server/wm/AppWarnings;->-$$Nest$fgetmPackageFlags(Lcom/android/server/wm/AppWarnings;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 873
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
