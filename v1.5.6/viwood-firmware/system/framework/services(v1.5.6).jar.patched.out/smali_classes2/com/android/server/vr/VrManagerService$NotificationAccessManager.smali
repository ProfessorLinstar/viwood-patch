.class public final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# instance fields
.field public final mAllowedPackages:Landroid/util/SparseArray;

.field public final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    .line 455
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .locals 6

    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 469
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 471
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 472
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 473
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationPolicyAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5, v4, v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 475
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 480
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 481
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 482
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeNotificationPolicyAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 484
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 487
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 489
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgrantNotificationPolicyAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgrantNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 491
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgrantCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    .line 492
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 496
    :cond_6
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 497
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
