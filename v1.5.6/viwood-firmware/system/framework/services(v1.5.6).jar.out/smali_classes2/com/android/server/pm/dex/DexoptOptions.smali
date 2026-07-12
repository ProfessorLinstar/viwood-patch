.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "DexoptOptions.java"


# instance fields
.field public final mCompilationReason:I

.field public final mCompilerFilter:Ljava/lang/String;

.field public final mFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    .line 100
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p5, -0xe70

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 122
    iput p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 123
    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 124
    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid flags : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToArtServiceDexoptReason(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid compilation reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :pswitch_0
    const-string p0, "boot-after-mainline-update"

    return-object p0

    .line 223
    :pswitch_1
    const-string p0, "cmdline"

    return-object p0

    .line 221
    :pswitch_2
    const-string p0, "inactive"

    return-object p0

    .line 219
    :pswitch_3
    const-string p0, "bg-dexopt"

    return-object p0

    .line 217
    :pswitch_4
    const-string p0, "install-bulk-secondary-downgraded"

    return-object p0

    .line 215
    :pswitch_5
    const-string p0, "install-bulk-downgraded"

    return-object p0

    .line 213
    :pswitch_6
    const-string p0, "install-bulk-secondary"

    return-object p0

    .line 211
    :pswitch_7
    const-string p0, "install-bulk"

    return-object p0

    .line 209
    :pswitch_8
    const-string p0, "install-fast"

    return-object p0

    .line 207
    :pswitch_9
    const-string p0, "install"

    return-object p0

    .line 234
    :pswitch_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ART Service unsupported compilation reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_b
    const-string p0, "boot-after-ota"

    return-object p0

    .line 203
    :pswitch_c
    const-string p0, "first-boot"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 264
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 265
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DEXOPT_CHECK_FOR_PROFILES_UPDATES must be set with profile guided filter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p1, p1, 0x1

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    or-int/lit8 p1, p1, 0x8

    :cond_4
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEXOPT_INSTALL_WITH_DEX_METADATA_FILE not set in request to optimise "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - ART Service will unconditionally use a DM file if present."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexoptOptions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_5
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_8

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    const/16 v0, 0x50

    goto :goto_2

    :cond_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    goto :goto_2

    :cond_7
    const/16 v0, 0x3c

    goto :goto_2

    :cond_8
    const/16 v0, 0x64

    .line 313
    :goto_2
    new-instance v1, Lcom/android/server/art/model/DexoptParams$Builder;

    iget v2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 314
    invoke-virtual {v1, p0}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    return-object p0

    .line 259
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to optimize only split "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCompilationReason()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return p0
.end method

.method public getCompilerFilter()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-object p0
.end method

.method public isBootComplete()Z
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCheckForProfileUpdates()Z
    .locals 1

    .line 132
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexoptAsSharedLibrary()Z
    .locals 0

    .line 156
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexoptIdleBackgroundJob()Z
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexoptInstallForRestore()Z
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexoptInstallWithDexMetadata()Z
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexoptOnlySecondaryDex()Z
    .locals 0

    .line 148
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDowngrade()Z
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;
    .locals 6

    .line 188
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    iget-object v4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
