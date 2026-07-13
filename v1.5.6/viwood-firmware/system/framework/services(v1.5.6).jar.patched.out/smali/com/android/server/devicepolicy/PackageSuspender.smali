.class public Lcom/android/server/devicepolicy/PackageSuspender;
.super Ljava/lang/Object;
.source "PackageSuspender.java"


# instance fields
.field public final mExemptedPackages:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mSuspendedPackageAfter:Ljava/util/Set;

.field public final mSuspendedPackageBefore:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$HQxzXzbTjOguRBc9Qc-pVBAl9q4(I)[Ljava/lang/String;
    .locals 0

    .line 103
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$QpUODY9mhRVgRDMIPM7V_dWstAI(I)[Ljava/lang/String;
    .locals 0

    .line 150
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$YroST8Dx-uOOccEMlZ8zW2iE0Uo(I)[Ljava/lang/String;
    .locals 0

    .line 137
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$iMt5C6vc7eRJ2c1gEiBsKJOJpXI(I)[Ljava/lang/String;
    .locals 0

    .line 85
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageBefore:Ljava/util/Set;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_1
    iput-object p2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 60
    iput-object p3, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 62
    iput p5, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    return-void
.end method


# virtual methods
.method public suspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PackageSuspender;->suspendWithExemption(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 85
    new-instance p1, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final suspendWithExemption(Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 98
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    iget p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    new-instance v3, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda2;-><init>()V

    .line 103
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v2, p0, v0, v3}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 105
    const-string p0, "PM failed to suspend packages (%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 108
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public unsuspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    .line 124
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 130
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 131
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 133
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/PackageSuspender;->unsuspendWithExemption(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final unsuspendWithExemption(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    iget p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    new-instance v1, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda3;-><init>()V

    .line 150
    invoke-interface {p1, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 152
    const-string v0, "PM failed to unsuspend packages (%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    return-object p1
.end method
