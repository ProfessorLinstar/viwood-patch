.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"


# static fields
.field public static final sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mData:[B

.field public final mMode:B

.field public final mSalt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 152
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    const-string p2, ""

    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(B[BLjava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 191
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 192
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    return-void
.end method

.method public static forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 3

    .line 170
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->writeArchivedPackageParcel(Landroid/content/pm/ArchivedPackageParcel;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-object v0
.end method

.method public static forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2

    .line 174
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 3

    .line 164
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-static {}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->nextGlobalSalt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2

    .line 158
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2

    .line 178
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 196
    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 200
    aget-byte v1, p0, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 216
    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 206
    invoke-static {p0, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/2addr v0, v2

    .line 209
    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 211
    new-instance v3, Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p0, v2

    move-object v0, v3

    .line 220
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static nextGlobalSalt()Ljava/lang/Long;
    .locals 2

    .line 154
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;
    .locals 3

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 274
    const-class p0, Landroid/content/pm/ArchivedPackageParcel;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ArchivedPackageParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw p0
.end method

.method public static writeArchivedPackageParcel(Landroid/content/pm/ArchivedPackageParcel;)[B
    .locals 2

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    throw p0
.end method


# virtual methods
.method public getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an archived package metadata."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getData()[B
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    return-object p0
.end method

.method public getMode()B
    .locals 0

    .line 254
    iget-byte p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    return p0
.end method

.method public toByteArray()[B
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 228
    iget-byte v1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 245
    array-length p0, v0

    add-int/2addr p0, v3

    new-array p0, p0, [B

    .line 246
    aput-byte v1, p0, v2

    .line 247
    array-length v1, v0

    invoke-static {v0, v2, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 230
    :cond_0
    array-length v1, v0

    .line 231
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    add-int/lit8 v5, v1, 0x5

    .line 232
    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 234
    iget-byte p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    aput-byte p0, v5, v2

    const/4 p0, 0x4

    .line 236
    invoke-static {v5, v3, p0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x5

    .line 239
    invoke-static {v0, v2, v5, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, v1

    .line 241
    array-length v0, v4

    invoke-static {v4, v2, v5, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5
.end method
