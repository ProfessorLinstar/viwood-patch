.class public abstract Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;
.super Ljava/lang/Object;
.source "AdditionalSubtypeMapRepository.java"


# static fields
.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

.field public static final sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 190
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-direct {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 2

    .line 211
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is called before loadInitialDataAndGet(). Returning an empty map"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdditionalSubtypeMapRepository"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static initializeIfNecessary(I)V
    .locals 3

    .line 228
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    sget-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUserCreated(I)V
    .locals 1

    .line 265
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->onUserCreated(I)V

    return-void
.end method

.method public static putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 2

    .line 252
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 254
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->scheduleWriteTask(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(I)V
    .locals 2

    .line 270
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->onUserRemoved(I)V

    .line 272
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static startWriterThread()V
    .locals 1

    .line 260
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->startThread()V

    return-void
.end method
