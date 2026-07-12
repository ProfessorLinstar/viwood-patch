.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;


# instance fields
.field public final payload:[B

.field public final qualityForUi:I

.field public final type:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 662
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    const/16 v1, -0x2710

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 672
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 673
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 674
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 8

    .line 683
    const-string v0, "LockSettingsStorage"

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 689
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 691
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 692
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 693
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 694
    array-length v4, p0

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    new-array v6, v4, [B

    const/4 v7, 0x0

    .line 695
    invoke-static {p0, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    new-instance p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 698
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown PersistentData version code: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 702
    :goto_0
    const-string v1, "Could not parse PersistentData"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0

    .line 684
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0
.end method

.method public static toBytes(III[B)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p3, :cond_0

    move v0, v1

    .line 710
    :cond_0
    const-string p0, "TYPE_NONE must have empty payload"

    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 714
    array-length v2, p3

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    const-string v2, "empty payload must only be used with TYPE_NONE"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 717
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v2, p3

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 719
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 721
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 722
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 723
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 724
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 725
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 727
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isBadFormatFromAndroid14Beta()Z
    .locals 3

    .line 678
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 679
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->isBadFormatFromAndroid14Beta([B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
