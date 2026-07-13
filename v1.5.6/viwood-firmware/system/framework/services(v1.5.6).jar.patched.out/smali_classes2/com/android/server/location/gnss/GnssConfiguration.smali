.class public Lcom/android/server/location/gnss/GnssConfiguration;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEsExtensionSec:I

.field public final mProperties:Ljava/util/Properties;


# direct methods
.method public static synthetic $r8$lambda$-vL-F9Cwyt2IAE587_5tF8_Vdkg(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_es(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3fQhh0HIdjq4jMHxYVTiFqO2lhg(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_lpp_profile(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DSZqFaGVxIJ_RoOI0GZb0pMXBhg(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gps_lock(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F9k7STpxBfONZ7Aqgxh165D_nWw(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_gnss_pos_protocol_select(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZLy4bFu8qE3ZjEkSXCo-Pu4l7O0(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_mode(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eXF9XL5ObtAcQauf3xSbZCBReug(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_supl_version(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vT_XZFD-4uMu_ePbNOLadVMKlCY(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_emergency_supl_pdn(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-string v0, "GnssConfiguration"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 120
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 121
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-void
.end method

.method public static isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .locals 1

    .line 478
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .locals 1

    .line 490
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z
    .locals 1

    .line 484
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSimAbsent(Landroid/content/Context;)Z
    .locals 1

    .line 494
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 496
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static native native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_es_extension_sec(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private static native native_set_satellite_blocklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method


# virtual methods
.method public final getBooleanConfig(Ljava/lang/String;Z)Z
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 472
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getC2KHost()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "C2K_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getC2KPort(I)I
    .locals 1

    .line 168
    const-string v0, "C2K_PORT"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEsExtensionSec()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    return p0
.end method

.method public getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    .locals 0

    .line 254
    invoke-static {}, Lcom/android/server/location/gnss/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getIntConfig(Ljava/lang/String;I)I
    .locals 2

    .line 454
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 455
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 459
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 461
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse config parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Using default value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getLppProfile()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-object p0
.end method

.method public getProxyApps()Ljava/util/List;
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 206
    array-length v0, p0

    if-nez v0, :cond_1

    .line 207
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 210
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRangeCheckedConfigEsExtensionSec()I
    .locals 4

    .line 440
    const-string v0, "ES_EXTENSION_SEC"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    .line 441
    const-string v0, "ES_EXTENSION_SEC: "

    const-string v2, "GnssConfiguration"

    const/16 v3, 0x12c

    if-le p0, v3, :cond_0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " too high, reset to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-gez p0, :cond_1

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is negative, reset to zero."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p0
.end method

.method public getSuplEs(I)I
    .locals 1

    .line 184
    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplHost()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "SUPL_HOST"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuplMode(I)I
    .locals 1

    .line 176
    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSuplPort(I)I
    .locals 1

    .line 152
    const-string v0, "SUPL_PORT"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isActiveSimEmergencySuplEnabled()Z
    .locals 2

    .line 225
    const-string v0, "ENABLE_ACTIVE_SIM_EMERGENCY_SUPL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLongTermPsdsServerConfigured()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LONGTERM_PSDS_SERVER_2"

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "LONGTERM_PSDS_SERVER_3"

    .line 243
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isNiSuplMessageInjectionEnabled()Z
    .locals 2

    .line 233
    const-string v0, "ENABLE_NI_SUPL_MESSAGE_INJECTION_BOOL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPsdsPeriodicDownloadEnabled()Z
    .locals 2

    .line 217
    const-string v0, "ENABLE_PSDS_PERIODIC_DOWNLOAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadPropertiesFromCarrierConfig(ZI)V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 379
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    .line 383
    :goto_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 385
    :goto_1
    const-string p2, "GnssConfiguration"

    if-nez p1, :cond_4

    .line 386
    sget-boolean p1, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "SIM not ready, use default carrier config."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 389
    :cond_4
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 390
    const-string v2, "gps."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 395
    sget-boolean v3, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gps config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_6
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 398
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_5

    .line 400
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public final loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2

    .line 408
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 411
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    :try_start_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 415
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 417
    :catch_0
    sget-boolean p0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not open GPS configuration file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 7

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x107007e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 425
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    .line 426
    sget-boolean v3, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    const-string v4, "GnssConfiguration"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GnssParamsResource: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 429
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 430
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed contents: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final logConfigurations()V
    .locals 15

    .line 354
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 356
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    const-string v5, "SUPL_VER"

    .line 358
    invoke-virtual {p0, v5, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    const-string v9, "LPP_PROFILE"

    .line 361
    invoke-virtual {p0, v9, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    .line 362
    invoke-virtual {p0, v10, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    .line 363
    invoke-virtual {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_1
    const-string v11, "GPS_LOCK"

    .line 364
    invoke-virtual {p0, v11, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    .line 365
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v12

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v0, "NFW_PROXY_APPS"

    .line 366
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v0, 0x84

    move v14, v10

    move v10, v8

    move v8, v9

    move v9, v14

    .line 353
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)V

    return-void
.end method

.method public reloadGpsProperties()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(ZI)V

    return-void
.end method

.method public reloadGpsProperties(ZI)V
    .locals 4

    .line 274
    sget-boolean v0, Lcom/android/server/location/gnss/GnssConfiguration;->DEBUG:Z

    const-string v1, "GnssConfiguration"

    if-eqz v0, :cond_0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset GPS properties, previous size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 276
    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inEmergency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", activeSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(ZI)V

    .line 283
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 286
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isSimAbsent(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "LPP_PROFILE"

    if-eqz p1, :cond_1

    .line 288
    const-string/jumbo p1, "persist.sys.gps.lpp"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, p2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v2, "/vendor/etc/gps_debug.conf"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v2, "/etc/gps_debug.conf"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result p1

    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 302
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->logConfigurations()V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 307
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    .line 308
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "SUPL_VER"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "SUPL_MODE"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "SUPL_ES"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_3
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance p2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance p2, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->isConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 328
    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$$ExternalSyntheticLambda6;-><init>()V

    const-string p2, "GPS_LOCK"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 336
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 337
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;

    invoke-interface {p2, v3}, Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;->set(I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse propertyName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 347
    const-string p0, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public setSatelliteBlocklist([I[I)V
    .locals 0

    .line 250
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->native_set_satellite_blocklist([I[I)Z

    return-void
.end method
