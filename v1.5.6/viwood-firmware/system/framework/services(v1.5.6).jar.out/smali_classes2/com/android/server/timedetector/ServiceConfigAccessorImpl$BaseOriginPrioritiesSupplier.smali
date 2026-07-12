.class public abstract Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;
.super Ljava/lang/Object;
.source "ServiceConfigAccessorImpl.java"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public mLastPriorityInts:[I

.field public mLastPriorityStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    return-object p0
.end method

.method public get()[I
    .locals 8

    .line 365
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->lookupPriorityStrings()[Ljava/lang/String;

    move-result-object v0

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 373
    array-length v2, v0

    new-array v3, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    .line 376
    :try_start_1
    aget-object v6, v0, v5

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    .line 377
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 379
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-static {v6}, Lcom/android/server/timedetector/TimeDetectorStrategy;->stringToOrigin(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 388
    :catch_0
    :cond_3
    :try_start_2
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    .line 389
    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    .line 390
    monitor-exit p0

    return-object v1

    .line 391
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public abstract lookupPriorityStrings()[Ljava/lang/String;
.end method
