.class public abstract Lcom/android/server/pm/pkg/PackageStateUtils;
.super Ljava/lang/Object;
.source "PackageStateUtils.java"


# direct methods
.method public static getEarliestFirstInstallTime(Landroid/util/SparseArray;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    .line 85
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 90
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-eqz v9, :cond_1

    cmp-long v9, v7, v5

    if-gez v9, :cond_1

    move-wide v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    cmp-long p0, v5, v2

    if-nez p0, :cond_3

    return-wide v0

    :cond_3
    return-wide v5

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_0
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 74
    :cond_1
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 75
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    .line 76
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v4

    move-object v5, p1

    move-wide v6, p2

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/internal/pm/pkg/component/ParsedMainComponent;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z
    .locals 2

    const-wide/32 v0, 0x100000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I
    .locals 6

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    .line 41
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-ne v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-array v0, v3, [I

    .line 47
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget v4, p1, v1

    .line 48
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-ne v5, p2, :cond_2

    .line 49
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
