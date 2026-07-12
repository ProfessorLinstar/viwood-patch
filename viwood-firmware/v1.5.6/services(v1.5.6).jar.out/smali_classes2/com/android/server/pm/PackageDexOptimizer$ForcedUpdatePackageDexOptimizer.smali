.class public abstract Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "PackageDexOptimizer.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 877
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adjustDexoptFlags(I)I
    .locals 0

    .line 0
    or-int/lit8 p0, p1, 0x40

    return p0
.end method

.method public adjustDexoptNeeded(I)I
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    return p1
.end method
