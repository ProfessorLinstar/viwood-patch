.class public abstract Lcom/android/server/inputmethod/SecureSettingsWrapper;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"


# static fields
.field public static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

.field public static final NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

.field public static volatile sContentResolver:Landroid/content/ContentResolver;

.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sTestMode:Z

.field public static volatile sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$smgetUserIdForClonedSettings(Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getUserIdForClonedSettings(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 84
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 252
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void
.end method

.method public static createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 1

    .line 274
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    return-object p0

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 278
    new-instance p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    return-object p0

    .line 279
    :cond_1
    new-instance p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    return-object p0
.end method

.method public static get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 2

    .line 305
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-eqz v0, :cond_0

    return-object v0

    .line 309
    :cond_0
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p0

    return-object p0

    .line 312
    :cond_1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 313
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 314
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    sget-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-object p0

    .line 317
    :cond_2
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;II)I
    .locals 0

    .line 439
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 413
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserIdForClonedSettings(Ljava/lang/String;I)I
    .locals 1

    .line 90
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static onUserRemoved(I)V
    .locals 2

    .line 383
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 385
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUserStarting(I)V
    .locals 2

    .line 337
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void

    .line 341
    :cond_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void
.end method

.method public static onUserStopped(I)V
    .locals 3

    .line 366
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 367
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-eqz v2, :cond_1

    .line 369
    instance-of v2, v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 373
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 370
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 373
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUserUnlocking(I)V
    .locals 2

    .line 351
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 356
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void
.end method

.method public static putInt(Ljava/lang/String;II)V
    .locals 0

    .line 426
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 4

    .line 286
    instance-of v0, p1, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 287
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-nez v2, :cond_0

    .line 290
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 291
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 294
    :cond_0
    instance-of v3, v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 296
    monitor-exit v1

    return-object p1

    .line 298
    :cond_1
    monitor-exit v1

    return-object v2

    .line 299
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 398
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 327
    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
