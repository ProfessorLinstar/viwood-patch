.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# static fields
.field public static final sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mActiveStateFunction:Ljava/util/function/Function;

.field public final mChangedStates:Landroid/util/ArraySet;

.field public final mDisabledStateFunction:Ljava/util/function/Function;

.field public final mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    .line 49
    iput-object p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    return-void
.end method

.method public static onPackageStateChanged()V
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method


# virtual methods
.method public forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object p0

    return-object p0
.end method

.method public forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object p0

    return-object p0
.end method

.method public generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 4

    if-nez p1, :cond_0

    .line 99
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->-$$Nest$fgetmPackageSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 103
    :goto_0
    sget-object p2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->-$$Nest$fgetmStateSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    .line 105
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    .line 107
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    .line 109
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0

    .line 111
    :cond_5
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object p0
.end method

.method public initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .locals 2

    .line 89
    new-instance p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;-><init>(IJ)V

    return-object p0
.end method

.method public onFinished()V
    .locals 2

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object p0

    return-object p0
.end method
