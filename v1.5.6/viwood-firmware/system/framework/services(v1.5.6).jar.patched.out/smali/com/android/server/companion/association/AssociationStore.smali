.class public Lcom/android/server/companion/association/AssociationStore;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIdToAssociationMap:Ljava/util/Map;

.field public final mLocalListeners:Ljava/util/Set;

.field public final mLock:Ljava/lang/Object;

.field public mMaxId:I

.field public mPersisted:Z

.field public final mRemoteListeners:Landroid/os/RemoteCallbackList;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$3MFCQYAaKw3hW3B_8DXfXy-ypXc(Lcom/android/server/companion/association/AssociationStore;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->lambda$writeCacheToDisk$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6UNfG1O_umewJpaaCymv-epvW3M(ILandroid/companion/AssociationInfo;)Z
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BRkrZb8ynhviyAR7u9OmaFg4lm8(Ljava/lang/String;ILandroid/companion/AssociationInfo;)Z
    .locals 1

    .line 442
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 443
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DvwHfwHktxXwlKwUoIDSpFBxppI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 373
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HF99kZmAfa36vlKVuqVcVO7x-p8(Lcom/android/server/companion/association/AssociationStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->lambda$refreshCache$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WqPp7Sx6IUzRAOyWj-ZI9V7ufMc(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 0

    .line 385
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_H3C90k_pJxrsTFh8oQiDM9sZ48(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V
    .locals 0

    .line 556
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p0, :cond_0

    const/4 p0, -0x1

    if-ne p3, p0, :cond_1

    .line 559
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Landroid/companion/IOnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$iBu2fKpSoYrXZchOsV91MofWIy0(ILandroid/companion/AssociationInfo;)Z
    .locals 0

    .line 361
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kbDu5Jw53dOi6mwN8QBQl_cBO1I(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 1

    .line 419
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    .line 420
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mvRyqfUentvYolYg2fq--QGmwRs(Ljava/lang/String;ILandroid/companion/AssociationInfo;)Z
    .locals 1

    .line 455
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 456
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$qIFnSrTpyjnN2HFxj9CQjwsoocE(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .locals 1

    .line 397
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    .line 398
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$z7yJq3ugyUSUKLz2Va7wt8hF3Fs(ILandroid/companion/AssociationInfo;)Z
    .locals 0

    .line 351
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 134
    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 137
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 139
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 145
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    .line 147
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public addAssociation(Landroid/companion/AssociationInfo;)V
    .locals 5

    .line 205
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new association=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association id=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] already exists."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v3, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 221
    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done adding new association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/companion/utils/MetricUtils;->logCreateAssociation(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_1
    return-void

    .line 222
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final broadcastChange(ILandroid/companion/AssociationInfo;)V
    .locals 3

    .line 541
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting association changes - changeType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;

    .line 545
    invoke-interface {v2, p1, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 547
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 549
    :try_start_1
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    .line 550
    invoke-virtual {p0, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 555
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda12;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 565
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 547
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 521
    const-string v0, "Companion Device Associations: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 522
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "  "

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "<empty>\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 525
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 526
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 527
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_0

    .line 531
    :cond_1
    :goto_1
    const-string v0, "Last Removed Association:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 532
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 533
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/AssociationDiskStore;->readLastRemovedAssociation(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 535
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getActiveAssociations()Ljava/util/List;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 421
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveAssociationsByUser(I)Ljava/util/List;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAssociationById(I)Landroid/companion/AssociationInfo;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .locals 3

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 476
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 475
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 471
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssociationWithCallerChecks() Association id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssociations()Ljava/util/List;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 331
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 332
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAssociationsByUser(I)Ljava/util/List;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 399
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxId()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNextId()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getMaxId()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPendingAssociations(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRevokedAssociations()Ljava/util/List;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRevokedAssociations(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$refreshCache$0()V
    .locals 7

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 158
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 164
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 165
    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 169
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 170
    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/association/Associations;

    invoke-virtual {v3}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 173
    iget-object v5, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 175
    :cond_1
    iget v3, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/association/Associations;

    invoke-virtual {v2}, Lcom/android/server/companion/association/Associations;->getMaxId()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 179
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$writeCacheToDisk$2(I)V
    .locals 4

    .line 308
    new-instance v0, Lcom/android/server/companion/association/Associations;

    invoke-direct {v0}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget v2, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    .line 311
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 312
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda13;

    invoke-direct {v3, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/Associations;->setAssociations(Ljava/util/List;)V

    .line 314
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsForUser(ILcom/android/server/companion/association/Associations;)V

    return-void

    :catchall_0
    move-exception p0

    .line 314
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public refreshCache()V
    .locals 1

    .line 155
    new-instance v0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerRemoteListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 505
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAssociation(ILjava/lang/String;)V
    .locals 3

    .line 280
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    if-nez v1, :cond_0

    .line 288
    const-string p0, "CDM_AssociationStore"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t remove association id=["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. It does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 294
    iget-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V

    .line 296
    const-string p1, "CDM_AssociationStore"

    const-string p2, "Done removing association."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/companion/utils/MetricUtils;->logRemoveAssociation(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 302
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_1
    return-void

    .line 297
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unregisterRemoteListener(Landroid/companion/IOnAssociationsChangedListener;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAssociation(Landroid/companion/AssociationInfo;)V
    .locals 4

    .line 235
    const-string v0, "CDM_AssociationStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating new association=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    if-nez v2, :cond_0

    .line 244
    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update association id=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]. It does not exist."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {v2, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    const-string p0, "CDM_AssociationStore"

    const-string p1, "Association is the same."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v1

    return-void

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/association/AssociationStore;->writeCacheToDisk(I)V

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done updating association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    .line 268
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 269
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 271
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_4
    return-void

    .line 256
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final writeCacheToDisk(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
