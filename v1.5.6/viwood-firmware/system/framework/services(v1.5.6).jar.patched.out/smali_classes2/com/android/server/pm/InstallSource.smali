.class public final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "InstallSource.java"


# static fields
.field public static final EMPTY:Lcom/android/server/pm/InstallSource;

.field public static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field public final mInitiatingPackageName:Ljava/lang/String;

.field public final mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field public final mInstallerAttributionTag:Ljava/lang/String;

.field public final mInstallerPackageName:Ljava/lang/String;

.field public final mInstallerPackageUid:I

.field public final mIsInitiatingPackageUninstalled:Z

.field public final mIsOrphaned:Z

.field public final mOriginatingPackageName:Ljava/lang/String;

.field public final mPackageSource:I

.field public final mUpdateOwnerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 37
    new-instance v0, Lcom/android/server/pm/InstallSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 44
    new-instance v1, Lcom/android/server/pm/InstallSource;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v1, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    xor-int/lit8 v0, p8, 0x1

    .line 176
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 181
    iput p4, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 182
    iput-object p5, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 183
    iput-object p6, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 184
    iput-boolean p7, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 185
    iput-boolean p8, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 186
    iput-object p9, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 187
    iput p10, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 125
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;
    .locals 10

    .line 136
    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {p4}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move v3, p3

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 135
    invoke-static/range {v0 .. v9}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 11

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    if-nez p9, :cond_1

    if-nez p8, :cond_1

    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    .line 158
    sget-object p0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object p0

    .line 160
    :cond_1
    new-instance v0, Lcom/android/server/pm/InstallSource;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v10, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    return-object v0
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    goto :goto_5

    .line 257
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 258
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 259
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 260
    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 261
    iget v6, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 262
    iget-boolean v7, v0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 264
    iget-object v8, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-nez v2, :cond_1

    move v8, v9

    move/from16 v18, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    move/from16 v18, v2

    .line 273
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    move v8, v9

    move-object v11, v10

    goto :goto_1

    :cond_2
    move-object v11, v3

    .line 277
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, -0x1

    move v8, v9

    move/from16 v17, v8

    move-object v12, v10

    :goto_2
    move v13, v6

    goto :goto_3

    :cond_3
    move-object v12, v4

    move/from16 v17, v7

    goto :goto_2

    .line 283
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v14, v10

    goto :goto_4

    :cond_4
    move-object v14, v5

    move v9, v8

    :goto_4
    if-nez v9, :cond_5

    :goto_5
    return-object v0

    .line 292
    :cond_5
    iget-object v10, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget v1, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move/from16 v16, v1

    invoke-static/range {v10 .. v19}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method public setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 11

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-boolean v8, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    iget-boolean v9, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    move-object v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .locals 11

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-boolean v8, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    iget-boolean v9, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v10, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v4, p2

    .line 199
    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;
    .locals 11

    .line 224
    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-boolean v9, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v10, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v8, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 11

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    .line 214
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-boolean v8, p0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    iget-boolean v9, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v10, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 213
    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method
