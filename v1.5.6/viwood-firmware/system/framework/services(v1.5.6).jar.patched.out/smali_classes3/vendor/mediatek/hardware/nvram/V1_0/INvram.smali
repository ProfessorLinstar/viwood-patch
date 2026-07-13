.class public interface abstract Lvendor/mediatek/hardware/nvram/V1_0/INvram;
.super Ljava/lang/Object;
.source "INvram.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/nvram/V1_0/INvram;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 76
    :cond_0
    const-string v1, "vendor.mediatek.hardware.nvram@1.0::INvram"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    instance-of v3, v2, Lvendor/mediatek/hardware/nvram/V1_0/INvram;

    if-eqz v3, :cond_1

    .line 79
    check-cast v2, Lvendor/mediatek/hardware/nvram/V1_0/INvram;

    return-object v2

    .line 82
    :cond_1
    new-instance v2, Lvendor/mediatek/hardware/nvram/V1_0/INvram$Proxy;

    invoke-direct {v2, p0}, Lvendor/mediatek/hardware/nvram/V1_0/INvram$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 85
    :try_start_0
    invoke-interface {v2}, Lvendor/mediatek/hardware/nvram/V1_0/INvram;->interfaceChain()Ljava/util/ArrayList;

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

    .line 86
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

.method public static getService()Lvendor/mediatek/hardware/nvram/V1_0/INvram;
    .locals 1

    .line 142
    const-string v0, "default"

    invoke-static {v0}, Lvendor/mediatek/hardware/nvram/V1_0/INvram;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/nvram/V1_0/INvram;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mediatek/hardware/nvram/V1_0/INvram;
    .locals 1

    .line 132
    const-string v0, "vendor.mediatek.hardware.nvram@1.0::INvram"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mediatek/hardware/nvram/V1_0/INvram;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/nvram/V1_0/INvram;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract readFileByName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract writeFileByNamevec(Ljava/lang/String;ILjava/util/ArrayList;)B
.end method
