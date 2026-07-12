.class public final Lcom/android/server/inputmethod/UserDataRepository;
.super Ljava/lang/Object;
.source "UserDataRepository.java"


# instance fields
.field public final mBindingControllerFactory:Ljava/util/function/IntFunction;

.field public final mMutationLock:Ljava/lang/Object;

.field public volatile mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

.field public final mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 63
    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    .line 64
    iput-object p2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public forAllUserData(Ljava/util/function/Consumer;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getOrCreate(I)Lcom/android/server/inputmethod/UserData;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/UserData;

    if-eqz v0, :cond_0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/UserData;

    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    .line 49
    invoke-interface {v2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/inputmethod/UserData;-><init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    .line 50
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 52
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
