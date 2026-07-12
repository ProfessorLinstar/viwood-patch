.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# static fields
.field public static final PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;


# instance fields
.field public final mCommitted:Z

.field public final mPackagesChanged:Z

.field public final mSpecificPackageNull:Z

.field public final mStateChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 143
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 144
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 145
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 146
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 147
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    .line 157
    iput-boolean p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    .line 158
    iput-boolean p3, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    .line 159
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    return-void
.end method


# virtual methods
.method public isCommitted()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    return p0
.end method

.method public isPackagesChanged()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    return p0
.end method

.method public isSpecificPackageNull()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    return p0
.end method

.method public isStateChanged()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    return p0
.end method
