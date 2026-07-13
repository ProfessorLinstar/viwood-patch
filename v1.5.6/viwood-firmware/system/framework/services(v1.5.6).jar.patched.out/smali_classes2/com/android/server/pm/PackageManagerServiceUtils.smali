.class public abstract Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field public static final DEBUG:Z

.field public static final REMOVE_IF_APEX_PKG:Ljava/util/function/Predicate;

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;


# direct methods
.method public static synthetic $r8$lambda$cIcNbRolf3vpNJXQFKHZq66-GNo(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;J)V
    .locals 0

    cmp-long p0, p4, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    .line 1529
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$lUdBVbwGolvSStCURcFIprX9_1g(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 0

    .line 155
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$sDbX46zTLkJ8LreyTaY8ScPIlsA(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 0

    .line 153
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 149
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 152
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Ljava/util/function/Predicate;

    .line 154
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public static arrayToString([I)Ljava/lang/String;
    .locals 3

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 1189
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 1190
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 1194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1091
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1092
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object p0

    .line 1095
    const-string v2, "0"

    if-nez p0, :cond_0

    .line 1096
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1098
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p1, :cond_4

    .line 1100
    array-length p0, p1

    if-nez p0, :cond_1

    goto :goto_3

    .line 1104
    :cond_1
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    .line 1105
    aget-object v3, p1, p0

    .line 1106
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1107
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v3

    .line 1109
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    .line 1111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1113
    :cond_2
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 1116
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1101
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 955
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    :try_start_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 959
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object p0

    const/4 v1, 0x0

    .line 958
    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 960
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 961
    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    .line 962
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to calculate installed size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z
    .locals 6

    .line 663
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v1, 0x2

    .line 665
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 666
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    return v3

    :cond_2
    if-nez v2, :cond_4

    .line 681
    invoke-virtual {v0, p1}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p3, v1, :cond_3

    return v3

    :cond_3
    return v4

    :cond_4
    if-nez v2, :cond_6

    .line 693
    invoke-virtual {p1, v0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    return v3

    :cond_5
    return v4

    :cond_6
    if-nez v2, :cond_7

    return v4

    .line 710
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    .line 711
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 712
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 713
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 716
    invoke-virtual {p1, v0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 717
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 719
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    return v3
.end method

.method public static checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    .locals 5

    .line 1434
    invoke-virtual {p5}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p0

    const-string v1, " is older than current "

    const/16 v2, -0x19

    if-ltz v0, :cond_5

    .line 1438
    invoke-virtual {p5}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v3

    cmp-long p0, v3, p0

    if-nez p0, :cond_4

    .line 1439
    iget p0, p5, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    if-lt p0, p2, :cond_3

    .line 1445
    iget-object p0, p5, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1446
    array-length p0, p3

    array-length p1, p4

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    .line 1453
    :goto_0
    iget-object p1, p5, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    array-length p2, p1

    if-ge p0, p2, :cond_4

    .line 1454
    aget-object p1, p1, p0

    .line 1455
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1457
    iget-object v0, p5, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget v0, v0, p0

    aget v3, p4, p2

    if-lt v0, v3, :cond_0

    goto :goto_1

    .line 1458
    :cond_0
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update split "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " revision code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p5, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p4, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p3

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1447
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Current split names and the split revision codes are not 1:1 mapping.This indicates that the package info data has been corrupted."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1440
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Update base revision code "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    return-void

    .line 1435
    :cond_5
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Update version code "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p5, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public static checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
    .locals 6

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getBaseRevisionCode()I

    move-result v2

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object v4

    move-object v5, p1

    .line 1417
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V

    return-void
.end method

.method public static checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    .locals 6

    .line 1427
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v2

    .line 1428
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v4

    move-object v5, p1

    .line 1427
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V

    return-void
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .locals 6

    .line 256
    sget-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 257
    sget-object v0, Landroid/os/Build;->MTK_HBT_SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 258
    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 264
    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 446
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p0, v0, :cond_1

    .line 447
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, -0x2

    return p0

    .line 413
    :cond_2
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_3

    return v3

    .line 418
    :cond_3
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5

    .line 419
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v3

    .line 424
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 425
    array-length v1, p0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v5, p0, v4

    .line 426
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    :cond_6
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 429
    array-length v1, p1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_7

    aget-object v5, p1, v4

    .line 430
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    :cond_7
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method public static compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .locals 0

    .line 399
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    return p0
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .locals 0

    .line 883
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 884
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1048
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/system/OsConstants;->O_RDWR:I

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p2, v1

    const/16 v1, 0x1a4

    invoke-static {p1, p2, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1056
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 1059
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1060
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1063
    throw p0

    .line 1049
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .locals 6

    .line 1018
    const-string v0, "PackageManager"

    if-nez p0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 1023
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 1026
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/4 v3, 0x0

    .line 1025
    invoke-static {v2, v1, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 1027
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse package at "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p0

    return p0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1031
    :cond_1
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/PackageLite;

    .line 1032
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "base.apk"

    invoke-static {v2, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1034
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_2

    .line 1035
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "split_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1035
    invoke-static {v2, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 1041
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .line 813
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 821
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 824
    invoke-static {v3, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 826
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 827
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 828
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    .line 830
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    :catchall_0
    move-exception v4

    .line 820
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 831
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decompress file; src: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    .line 831
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 834
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const/16 p0, -0x6e

    return p0
.end method

.method public static decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .locals 10

    .line 787
    const-string v0, "Failed to decompress; pkg: "

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/16 v1, 0x1ed

    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 790
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 791
    array-length v1, p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    :try_start_1
    aget-object v7, p0, v5

    .line 792
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 794
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    .line 793
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 795
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v6

    if-eq v6, v3, :cond_0

    .line 798
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return v6

    :catch_0
    move-exception p0

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v6

    :catch_1
    move-exception p0

    .line 805
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v3
.end method

.method public static deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 379
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 294
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 296
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 301
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    const-string v1, "ignored: updated version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x20900000007L

    .line 303
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 296
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 310
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 312
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_0

    .line 314
    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 317
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 318
    const-string v1, "ignored: updated version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 312
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    if-ltz p3, :cond_1

    .line 352
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shell does not have permission to access user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to check shell permission for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 358
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 357
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .locals 3

    .line 368
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from UID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 1

    .line 1331
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1332
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRootOrShell(Ljava/lang/String;)V
    .locals 1

    .line 1274
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1275
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1485
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    return v2

    .line 1489
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p1

    .line 1490
    const-string v3, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 1493
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 1494
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->isResourceId()Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 1497
    :cond_3
    const-string v3, "PackageManager"

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1499
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/16 v5, 0x1c0

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create app metadata dir for package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1501
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1506
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object p0

    .line 1507
    new-instance v4, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v4}, Landroid/content/res/AssetManager$Builder;-><init>()V

    move v5, v0

    .line 1508
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1510
    :try_start_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1512
    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load resources from APK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1515
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 1516
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1517
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1518
    new-instance v5, Landroid/content/res/Resources;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v4, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1519
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1520
    :try_start_2
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1521
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_6

    .line 1523
    :try_start_4
    invoke-static {p1, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_6

    .line 1525
    :cond_6
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession;->getAppMetadataSizeLimit()J

    move-result-wide v4

    .line 1526
    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    .line 1527
    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4, v5, p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;-><init>(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;)V

    invoke-static {p1, v0, p2, v6, v7}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    .line 1534
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0x1a0

    invoke-static {p2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1536
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_7

    .line 1537
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_c

    :catch_2
    move-exception p1

    goto :goto_a

    .line 1541
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1542
    :goto_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b

    :catchall_2
    move-exception p2

    goto :goto_8

    .line 1521
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_8
    if-eqz p1, :cond_8

    .line 1520
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1538
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1541
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 1545
    :cond_9
    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 1541
    :goto_c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1542
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1544
    :cond_a
    throw p1
.end method

.method public static extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I
    .locals 3

    .line 735
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 738
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 739
    :try_start_1
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 742
    :goto_0
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extract native libraries; pkg: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; err: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    .line 742
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 746
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 p0, -0x6e

    return p0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 747
    throw p1
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 6

    .line 840
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 856
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    .line 857
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x5

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 862
    const-string v4, "PackageManager"

    if-nez v0, :cond_1

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 867
    :cond_1
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 868
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 875
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompressedFiles["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v3
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J
    .locals 5

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 277
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 279
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 280
    new-instance v3, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 3

    .line 892
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    const/4 v1, -0x2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 899
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-static {p3}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 903
    :try_start_0
    invoke-static {p1, p4}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 905
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x6

    .line 906
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 909
    :cond_1
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :goto_0
    return-object v0

    :cond_2
    const-wide/16 v1, 0x0

    .line 919
    :goto_1
    new-instance p2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 p4, -0x1

    invoke-direct {p2, p4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 921
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 922
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result p4

    iput p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 923
    iput-wide v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 924
    iput p3, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 927
    :try_start_1
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 932
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 933
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 934
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 935
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 936
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 937
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 938
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result p2

    iput p2, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 939
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object p2

    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 940
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 941
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 942
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 943
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    return-object v0

    :catch_1
    move-exception p0

    .line 930
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 894
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid package file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return-object v0
.end method

.method public static getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1209
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 1210
    new-array v1, v1, [B

    .line 1213
    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 1215
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1223
    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1224
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codepath is off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I
    .locals 1

    if-eqz p0, :cond_2

    .line 1250
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1252
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1255
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .locals 2

    .line 198
    :try_start_0
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;
    :try_end_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getRootHash(Ljava/lang/String;)[B
    .locals 2

    .line 1129
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1134
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v0

    .line 1135
    iget-object v0, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v0, :cond_1

    .line 1139
    invoke-static {v0}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v0

    .line 1140
    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, p0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object p0

    return-object p0

    .line 1141
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Root has not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1136
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Hashing info not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1131
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File signature not present"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1145
    const-string v0, "PackageManager"

    const-string v1, "Could not obtain verity root hash"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSettingsProblemFile()Ljava/io/File;
    .locals 3

    .line 287
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "uiderrors.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z
    .locals 0

    .line 1168
    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAdoptedShell(ILandroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    .line 1312
    const-string p0, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDowngradePermitted(IZ)Z
    .locals 3

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1001
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method public static isInstalledByAdb(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1474
    const-string v0, "com.android.shell"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public static isRootOrShell(I)Z
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 1

    .line 1151
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSystemOrRoot()Z
    .locals 1

    .line 1297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1298
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v0

    return v0
.end method

.method public static isSystemOrRoot(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSystemOrRootOrShell()Z
    .locals 1

    .line 1283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    return v0
.end method

.method public static isSystemOrRootOrShell(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 0

    .line 1155
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V
    .locals 10

    .line 1631
    const-string v0, "> to <"

    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p4, v2

    .line 1632
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1633
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1634
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, ">"

    const-string v8, "PackageManager"

    if-eqz v6, :cond_0

    .line 1636
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping existing linked file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1644
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 1643
    invoke-virtual {p0, p1, v3, v6, v9}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Linked <"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    .line 1655
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1661
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restorecon for linked file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v3

    .line 1657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set mode for linked file <"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1650
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to link native library <"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    .locals 8

    if-eqz p3, :cond_7

    .line 1552
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1555
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1559
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1560
    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_2

    .line 1563
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 1565
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1566
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1569
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1572
    :cond_5
    new-array v0, v3, [Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/io/File;

    .line 1573
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/File;

    .line 1574
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0x1a4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1577
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    .line 1579
    const-string p0, "lib"

    invoke-static {v1, v2, v3, v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 1580
    const-string p0, "lib64"

    invoke-static {v1, v2, v3, v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public static linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 1589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1593
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    const-string p4, ">"

    const-string v2, "PackageManager"

    if-nez p3, :cond_1

    .line 1596
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create native library dir at <"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1603
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_5

    .line 1607
    :cond_2
    array-length v3, p3

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v0, p3, v4

    .line 1608
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1611
    :try_start_1
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create native library subdir at <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    move-object v5, p0

    move-object v6, p1

    goto :goto_4

    .line 1618
    :cond_4
    :goto_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1620
    array-length v0, v9

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v10, 0x1ed

    move-object v5, p0

    move-object v6, p1

    .line 1623
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move-object p1, v6

    goto :goto_1

    :cond_6
    :goto_5
    return-void
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .locals 5

    .line 329
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 332
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object p0

    .line 333
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 334
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 335
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 336
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1fc

    const/4 v0, -0x1

    .line 339
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .locals 4

    .line 1070
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 1071
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_1

    const/4 v2, 0x0

    .line 1074
    invoke-interface {p0, v2, v1}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 1075
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1078
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1079
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .locals 2

    .line 518
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v1, 0x1

    .line 517
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated system app mismatches cert on /system: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
    .locals 11

    .line 459
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 460
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 461
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 464
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 466
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 467
    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 468
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 471
    :catch_0
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p0, 0x1

    return p0

    .line 479
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Existing package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_4
    return v3
.end method

.method public static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z
    .locals 1

    const/4 v0, 0x4

    .line 498
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recovered effectively matching certificates for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 504
    :goto_0
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 506
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to recover certificates for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 1348
    :cond_0
    const-string/jumbo p0, "pm.boot.disable_package_cache"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "PackageManager"

    if-eqz p0, :cond_1

    .line 1349
    const-string p0, "Disabling package parser cache due to system property."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1355
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPackageCacheDirectory()Ljava/io/File;

    move-result-object p0

    .line 1356
    invoke-static {p0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    .line 1363
    :cond_2
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 1367
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 1368
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping known cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1371
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying unknown cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-static {v6}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1377
    :cond_4
    invoke-static {p0, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cache directory cannot be created - wiping base dir "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-object v0

    :cond_5
    if-eqz p1, :cond_6

    .line 1393
    const-string p1, "eng."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1394
    const-string p1, "Wiping cache directory because the system partition changed."

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance p1, Ljava/io/File;

    .line 1401
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "framework"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-gez p1, :cond_6

    .line 1403
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 1404
    invoke-static {p0, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 245
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2d

    .line 1231
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1235
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid package folder name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 1176
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    .line 1179
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 1180
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
    .locals 7

    .line 542
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 547
    invoke-virtual {p3, v1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    const/16 v4, 0x8

    if-nez v1, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p3, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 557
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    sget-object v6, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v5, v6, :cond_2

    .line 558
    invoke-static {v0, p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object p2

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v1

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_2
    if-nez v1, :cond_6

    if-eqz p5, :cond_6

    .line 569
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 567
    invoke-static {v0, v1, p3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 572
    invoke-static {v0, p3, v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :cond_6
    :goto_4
    if-nez v1, :cond_7

    if-eqz p6, :cond_7

    .line 583
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p6

    invoke-virtual {p6, p3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_5

    .line 587
    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Existing package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signatures do not match newer version; ignoring!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_9
    move p2, v3

    :goto_5
    if-eqz p1, :cond_11

    .line 594
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p6

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq p6, v1, :cond_11

    .line 601
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_a

    move p0, v2

    goto :goto_6

    :cond_a
    move p0, v3

    .line 600
    :goto_6
    invoke-static {v0, p3, p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result p0

    if-nez p0, :cond_b

    if-eqz p4, :cond_b

    .line 604
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, p0, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    :cond_b
    if-nez p0, :cond_e

    if-eqz p5, :cond_e

    .line 608
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p4, 0x2

    .line 609
    invoke-static {v0, p0, p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-nez p0, :cond_d

    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 613
    invoke-static {v0, p3, p0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v3

    :cond_d
    :goto_7
    or-int/2addr p2, v2

    move p0, v2

    .line 619
    :cond_e
    const-string p4, "Package "

    const/4 p5, -0x8

    if-eqz p0, :cond_10

    .line 627
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p3, p0}, Landroid/content/pm/SigningDetails;->hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_f

    return p2

    .line 629
    :cond_f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 620
    :cond_10
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " has no signatures that match those in shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_11
    return p2
.end method

.method public static waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V
    .locals 3

    .line 764
    const-string/jumbo v0, "native_lib_extract"

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 773
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 774
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 775
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalStorage;

    .line 776
    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 779
    :cond_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 780
    throw p0
.end method
