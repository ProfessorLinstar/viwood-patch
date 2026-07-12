.class public Lcom/android/server/audio/AudioServerPermissionProvider;
.super Ljava/lang/Object;
.source "AudioServerPermissionProvider.java"


# static fields
.field public static final HDS_PERMS:[B

.field public static final MONITORED_PERMS:[Ljava/lang/String;

.field public static final NONPACKAGE_UIDS:[I


# instance fields
.field public mDest:Lcom/android/media/permission/INativePermissionController;

.field public mHdsUid:I

.field public mIsUpdateDeferred:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMap:Ljava/util/Map;

.field public final mPermMap:[[I

.field public final mPermissionPredicate:Ljava/util/function/BiPredicate;

.field public final mUserIdSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static synthetic $r8$lambda$36jOxDK8aJjqteWDAte26FquJuw()Landroid/util/ArraySet;
    .locals 2

    .line 373
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$4h-yQtUTiiXjKIh_Fi_QpFqG33A(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/String;
    .locals 0

    .line 372
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W9ZZjXFn_I5uhi5LWjFkj6BUBlM(Ljava/util/Map$Entry;)Lcom/android/media/permission/UidPackageState;
    .locals 2

    .line 319
    new-instance v0, Lcom/android/media/permission/UidPackageState;

    invoke-direct {v0}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 320
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/media/permission/UidPackageState;->uid:I

    .line 321
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/android/media/permission/UidPackageState;->packageNames:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic $r8$lambda$f_limh5L9xRzsqmZ6YvRNIOccOo(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/Integer;
    .locals 0

    .line 378
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lU2U26USFxJXvFk9wdz3nKhH97c(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1

    .line 177
    new-instance p0, Landroid/util/ArraySet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(I)V

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x10

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 71
    new-array v5, v4, [B

    fill-array-data v5, :array_0

    sput-object v5, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    const/16 v5, 0x3f5

    const/16 v6, 0x417

    .line 78
    filled-new-array {v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/android/server/audio/AudioServerPermissionProvider;->NONPACKAGE_UIDS:[I

    .line 81
    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v0, v3

    const/4 v3, 0x1

    .line 82
    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    aput-object v5, v0, v3

    const/4 v3, 0x2

    .line 83
    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v5, v0, v3

    .line 84
    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    aput-object v3, v0, v4

    const/4 v3, 0x4

    .line 85
    const-string v4, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 86
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    .line 87
    const-string v4, "android.permission.CALL_AUDIO_INTERCEPTION"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 88
    const-string v4, "android.permission.ACCESS_ULTRASOUND"

    aput-object v4, v0, v3

    .line 89
    const-string v3, "android.permission.CAPTURE_AUDIO_OUTPUT"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 90
    const-string v3, "android.permission.CAPTURE_MEDIA_OUTPUT"

    aput-object v3, v0, v2

    .line 91
    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 92
    const-string v2, "android.permission.CAPTURE_TUNER_AUDIO_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 93
    const-string v2, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 95
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 96
    const-string v2, "android.permission.BYPASS_CONCURRENT_RECORD_AUDIO_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 98
    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    aput-object v2, v0, v1

    return-void

    :array_0
    .array-data 1
        0xat
        0x8t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/function/BiPredicate;Ljava/util/function/Supplier;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 113
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    const/4 v1, -0x1

    .line 119
    iput v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 130
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iput-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    .line 133
    iput-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    .line 135
    invoke-static {p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->generatePackageMappings(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    return-void
.end method

.method public static generatePackageMappings(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3

    .line 370
    new-instance v0, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 373
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 375
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 377
    invoke-static {v1, v2, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 376
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public clearIsolatedServiceUid(I)V
    .locals 12

    .line 264
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 266
    iget v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-eq v2, p1, :cond_0

    .line 267
    const-string v2, "AudioServerPermissionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected isolated service uid cleared: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 273
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    goto :goto_0

    .line 276
    :cond_1
    const-string v1, "AudioServerPermissionProvider"

    const-string v3, "clearIsolatedService uid not found"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v1, :cond_2

    .line 280
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 284
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    aget-byte v6, v1, v5

    .line 285
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v7, v7, v6

    array-length v8, v7

    sub-int/2addr v8, v2

    new-array v8, v8, [I

    .line 286
    invoke-static {v7, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_2

    .line 288
    :cond_3
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    invoke-static {v9, v4, v8, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v6

    add-int/lit8 v10, v7, 0x1

    array-length v11, v9

    sub-int/2addr v11, v7

    sub-int/2addr v11, v2

    invoke-static {v9, v10, v8, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v7, v6

    .line 292
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v7, v6, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 296
    :try_start_2
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 298
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    :cond_4
    const/4 p1, -0x1

    .line 300
    iput p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 301
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getUidsHoldingPerm(I)[I
    .locals 12

    .line 336
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 337
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/android/server/audio/AudioServerPermissionProvider;->NONPACKAGE_UIDS:[I

    array-length v4, v3

    add-int/2addr v2, v4

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 338
    array-length v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    aget v6, v3, v5

    .line 339
    iget-object v7, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 340
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 344
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    aget v6, v2, v5

    move v7, v4

    .line 348
    :goto_3
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 349
    invoke-virtual {v1, v7}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 350
    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 351
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v11, v11, p1

    invoke-interface {v9, v10, v11}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    invoke-virtual {v0, v8}, Landroid/util/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 356
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->isSpecialHdsPermission(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_6

    .line 357
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 359
    :cond_6
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    .line 360
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final isSpecialHdsPermission(I)Z
    .locals 4

    .line 305
    sget-object p0, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onModifyPackageState(ILjava/lang/String;Z)V
    .locals 3

    .line 172
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 173
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p3, :cond_0

    .line 177
    :try_start_0
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 178
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 180
    :cond_0
    iget-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-eqz p3, :cond_1

    .line 182
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez p2, :cond_2

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_2
    new-instance p2, Lcom/android/media/permission/UidPackageState;

    invoke-direct {p2}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 191
    iput p1, p2, Lcom/android/media/permission/UidPackageState;->uid:I

    if-eqz p3, :cond_3

    .line 192
    invoke-static {p3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iput-object p1, p2, Lcom/android/media/permission/UidPackageState;->packageNames:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {p1, p2}, Lcom/android/media/permission/INativePermissionController;->updatePackagesForUid(Lcom/android/media/permission/UidPackageState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    .line 197
    :try_start_2
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 199
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onPermissionStateChanged()V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 206
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 209
    :cond_0
    const-string v1, "audioserver_permission_update"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v1, v5, :cond_2

    .line 212
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v5

    .line 213
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v5, v6, v1

    .line 215
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v6, v1, v5}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 220
    :try_start_2
    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 222
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 225
    throw p0

    .line 226
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onServiceStart(Lcom/android/media/permission/INativePermissionController;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_3

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->resetNativePackageState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 150
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 153
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 155
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    .line 158
    :try_start_2
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 160
    :goto_2
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final resetNativePackageState()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    .line 316
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda4;-><init>()V

    .line 317
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v1, v0}, Lcom/android/media/permission/INativePermissionController;->populatePackagesForUids(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    :goto_0
    return-void
.end method

.method public setIsolatedServiceUid(II)V
    .locals 9

    .line 230
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 234
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 235
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    goto :goto_0

    .line 237
    :cond_1
    const-string p2, "AudioServerPermissionProvider"

    const-string/jumbo v2, "setIsolatedService owning uid not found"

    invoke-static {p2, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 241
    iget-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 242
    iput-boolean p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 246
    :cond_2
    :try_start_1
    sget-object p1, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-byte v4, p1, v3

    .line 247
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v5, v5, v4

    array-length v6, v5

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [I

    .line 248
    array-length v8, v5

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    aput v5, v7, v6

    .line 250
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 251
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v7, v5, v4

    .line 252
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v5, v4, v7}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 256
    :try_start_2
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 258
    iput-boolean p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 260
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
