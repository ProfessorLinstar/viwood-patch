.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "VirtualDeviceManagerService.java"


# instance fields
.field public final mUsersInLockdown:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 149
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
