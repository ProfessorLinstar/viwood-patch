.class public abstract Lcom/mediatek/server/pm/hbtpackage/HBTPackage;
.super Ljava/lang/Object;
.source "HBTPackage.java"


# direct methods
.method public static HBTcheckInstall(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6

    .line 43
    sget-object v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DISPATCH_POLICY:Lcom/mediatek/internal/os/AppDispatchPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 47
    sget-boolean p0, Lcom/mediatek/internal/os/PolicySelector;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v0, p0}, Lcom/mediatek/internal/os/AppDispatchPolicy;->checkPackageName(Ljava/lang/String;)Z

    move-result p0

    .line 50
    :goto_0
    sget v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DYNAMIC_POLICY:I

    const-string v2, "arm"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DISPATCH_POLICY:Lcom/mediatek/internal/os/AppDispatchPolicy;

    if-eqz v0, :cond_5

    .line 51
    invoke-static {}, Lcom/mediatek/internal/os/ZygoteConfigExt;->isApp32BoostEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 52
    const-string v0, "HBTcheckInstall"

    if-eqz p3, :cond_3

    .line 53
    invoke-static {p1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-static {p2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update package from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    aget-object v0, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "arm64"

    if-eqz v0, :cond_2

    aget-object v0, p3, v1

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_2
    aget-object p2, p2, v1

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    aget-object p2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v3

    .line 65
    :cond_3
    invoke-static {p1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install package with abi: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v1

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    array-length p3, p2

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_5

    aget-object v4, p2, v0

    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/os/ZygoteConfigExt;->isApp32BoostEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-boolean p2, Lcom/mediatek/internal/os/PolicySelector;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-eqz p2, :cond_7

    sget-object p2, Lcom/mediatek/internal/os/ZygoteConfigExt;->DISPATCH_POLICY:Lcom/mediatek/internal/os/AppDispatchPolicy;

    if-eqz p2, :cond_7

    .line 78
    invoke-static {p1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 79
    array-length p2, p1

    move p3, v1

    :goto_2
    if-ge p3, p2, :cond_7

    aget-object v0, p1, p3

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public static HBTcheckUninstall(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 18
    invoke-static {}, Lcom/mediatek/internal/os/ZygoteConfigExt;->isApp32BoostEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DISPATCH_POLICY:Lcom/mediatek/internal/os/AppDispatchPolicy;

    if-eqz v0, :cond_5

    sget v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DYNAMIC_POLICY:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    .line 22
    sget-boolean p0, Lcom/mediatek/internal/os/PolicySelector;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mediatek/internal/os/ZygoteConfigExt;->DISPATCH_POLICY:Lcom/mediatek/internal/os/AppDispatchPolicy;

    .line 24
    invoke-interface {v0, p0}, Lcom/mediatek/internal/os/AppDispatchPolicy;->checkPackageName(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    .line 27
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 28
    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v3, p0, v0

    .line 29
    const-string v4, "arm"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v1
.end method

.method public static updateHbtStatus(I)V
    .locals 5

    .line 89
    invoke-static {}, Lcom/mediatek/internal/os/ZygoteConfigExt;->isApp32BoostEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    .line 93
    const-string v1, "vendor_system_native"

    const-string v2, "hbt_target_installed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-gez v0, :cond_1

    .line 97
    const-string p0, "HBTPackage"

    const-string v0, "32B APP count got something wrong"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "zygote_HBT"

    if-lez v0, :cond_2

    .line 102
    const-string v0, "1"

    invoke-static {v1, v4, v0, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 104
    const-string v0, "0"

    invoke-static {v1, v4, v0, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {v1, v2, p0, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_4
    :goto_1
    return-void
.end method
