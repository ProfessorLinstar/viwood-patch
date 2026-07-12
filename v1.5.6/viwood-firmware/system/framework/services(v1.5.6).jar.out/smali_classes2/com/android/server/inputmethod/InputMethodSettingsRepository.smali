.class public abstract Lcom/android/server/inputmethod/InputMethodSettingsRepository;
.super Ljava/lang/Object;
.source "InputMethodSettingsRepository.java"


# static fields
.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodSettings;

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->createEmptyMap(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    return-object p0
.end method

.method public static put(ILcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 50
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

    .line 55
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
