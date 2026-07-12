.class public Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
.super Ljava/lang/Object;
.source "EnterpriseSpecificIdCalculator.java"


# instance fields
.field public final mImei:Ljava/lang/String;

.field public final mMacAddress:Ljava/lang/String;

.field public final mMeid:Ljava/lang/String;

.field public final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 55
    :goto_0
    const-string v3, "Unable to access telephony service"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 68
    :goto_1
    iput-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 70
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.hardware.wifi"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    array-length v0, p1

    if-lez v0, :cond_1

    .line 75
    aget-object p1, p1, v1

    goto :goto_2

    .line 78
    :cond_1
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public static getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 88
    const-string p0, ""

    :cond_0
    const/16 v0, 0x10

    .line 90
    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateEnterpriseId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "owner package must be specified."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "enterprise ID must either be null or non-empty."

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_2

    .line 130
    const-string p2, ""

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedMeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 137
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    .line 139
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedProfileOwnerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 146
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedEnterpriseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 147
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 148
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 151
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x10

    .line 150
    const-string v0, "HMACSHA256"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Landroid/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 154
    new-instance p1, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 155
    new-instance p2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedEnterpriseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x40

    .line 110
    invoke-static {p1, p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedImei()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedMeid()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedProfileOwnerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x40

    .line 106
    invoke-static {p1, p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddedSerialNumber()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
