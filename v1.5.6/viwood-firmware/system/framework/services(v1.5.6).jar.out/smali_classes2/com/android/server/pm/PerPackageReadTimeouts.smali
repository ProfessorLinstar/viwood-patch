.class public Lcom/android/server/pm/PerPackageReadTimeouts;
.super Ljava/lang/Object;
.source "PerPackageReadTimeouts.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final sha256certificate:[B

.field public final timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

.field public final versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    .line 130
    iput-object p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 131
    iput-object p4, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method

.method public static parse(Ljava/lang/String;Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)Lcom/android/server/pm/PerPackageReadTimeouts;
    .locals 5

    .line 142
    const-string v0, ":"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 143
    array-length v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-eq v0, v1, :cond_0

    return-object v3

    .line 145
    :cond_0
    aget-object p1, p0, p1

    invoke-static {p1}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-result-object p2

    .line 148
    :cond_1
    aget-object p1, p0, v4

    invoke-static {p1}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    move-result-object p1

    .line 151
    :cond_2
    aget-object v0, p0, v2

    invoke-static {v0}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseSha256(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    const/4 v1, 0x0

    .line 154
    aget-object p0, p0, v1

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v3

    .line 163
    :cond_4
    new-instance v1, Lcom/android/server/pm/PerPackageReadTimeouts;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/PerPackageReadTimeouts;-><init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V

    return-object v1
.end method

.method public static parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 173
    :cond_0
    sget-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    .line 174
    invoke-static {p0}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-result-object p0

    .line 176
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 179
    aget-object v4, p1, v3

    invoke-static {v4, v0, p0}, Lcom/android/server/pm/PerPackageReadTimeouts;->parse(Ljava/lang/String;Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)Lcom/android/server/pm/PerPackageReadTimeouts;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 182
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static tryParseLong(Ljava/lang/String;J)J
    .locals 0

    .line 31
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static tryParseSha256(Ljava/lang/String;)[B
    .locals 2

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method
