.class public interface abstract Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;
.super Ljava/lang/Object;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 21
    :cond_0
    const-string v1, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    instance-of v3, v2, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService()Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;
    .locals 1

    .line 87
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;->getService(Ljava/lang/String;)Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;
    .locals 1

    .line 77
    const-string v0, "android.hardware.configstore@1.1::ISurfaceFlingerConfigs"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/configstore/V1_1/ISurfaceFlingerConfigs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method
