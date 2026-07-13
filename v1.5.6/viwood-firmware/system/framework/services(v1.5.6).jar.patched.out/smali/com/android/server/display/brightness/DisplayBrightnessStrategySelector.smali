.class public Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
.super Ljava/lang/Object;
.source "DisplayBrightnessStrategySelector.java"


# instance fields
.field public mAllowAutoBrightnessWhileDozing:Z

.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

.field public final mAutomaticBrightnessStrategy2:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

.field public final mContext:Landroid/content/Context;

.field final mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

.field public final mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

.field public final mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

.field public final mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

.field public final mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

.field public mOldBrightnessStrategyName:Ljava/lang/String;

.field public final mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

.field public final mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

.field public final mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;ILcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 120
    new-instance p2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;

    invoke-direct {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;-><init>()V

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    .line 123
    iput-object p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 124
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 125
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 126
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getScreenOffBrightnessStrategy()Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 127
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 128
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getTemporaryBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 129
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getBoostBrightnessStrategy()Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 130
    invoke-virtual {p2, p3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getFollowerBrightnessStrategy(I)Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 131
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getInvalidBrightnessStrategy()Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 133
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    move-object v7, v8

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutomaticBrightnessStrategy1(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    move-result-object v7

    :goto_0
    iput-object v7, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 137
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object p3, v8

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutomaticBrightnessStrategy2(Landroid/content/Context;I)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy2:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 140
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object p3, v7

    .line 141
    :cond_3
    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 143
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 144
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p3

    move-object v9, p3

    goto :goto_2

    :cond_4
    move-object v9, v8

    :goto_2
    iput-object v9, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 145
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 147
    invoke-virtual {p2, p4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getOffloadBrightnessStrategy(Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    goto :goto_3

    .line 149
    :cond_5
    iput-object v8, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 152
    :goto_3
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 153
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getFallbackBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    move-result-object v8

    :cond_6
    move-object v10, v8

    iput-object v10, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    .line 154
    iget-object v8, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111001a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 161
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 162
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final constructStrategySelectionNotifyRequest(Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;
    .locals 9

    .line 325
    new-instance v0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    .line 326
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    .line 327
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v2

    .line 329
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getLastUserSetScreenBrightness()F

    move-result v4

    .line 330
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isUserSetBrightnessChanged()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v7

    .line 333
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isWearBedtimeModeEnabled()Z

    move-result v8

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;FZZZZ)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 272
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 273
    const-string v0, "DisplayBrightnessStrategySelector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOldBrightnessStrategyName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozing= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 285
    invoke-interface {v2, v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    return-object p0
.end method

.method public getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    return-object p0
.end method

.method public getFollowerDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    return-object p0
.end method

.method public getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    return-object p0
.end method

.method public getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    return-object p0
.end method

.method public getTemporaryDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    return-object p0
.end method

.method public isAllowAutoBrightnessWhileDozing()Z
    .locals 0

    .line 248
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    return p0
.end method

.method public isAllowAutoBrightnessWhileDozingConfig()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    return p0
.end method

.method public final isAutoBrightnessFallbackStrategyValid()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAutomaticBrightnessStrategyValid(Lcom/android/server/display/brightness/StrategySelectionRequest;)Z
    .locals 9

    .line 309
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 313
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 314
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-boolean v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 315
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getLastUserSetScreenBrightness()F

    move-result v6

    .line 316
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isUserSetBrightnessChanged()Z

    move-result v7

    .line 317
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isWearBedtimeModeEnabled()Z

    move-result v8

    const/4 v3, 0x0

    .line 309
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZ)V

    .line 318
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isStylusBeingUsed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 319
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final postProcess(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 3

    .line 337
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v2, p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v1

    .line 175
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    .line 176
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    goto/16 :goto_1

    .line 179
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    goto/16 :goto_1

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 182
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->getBrightnessToFollow()F

    move-result v1

    .line 181
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    goto/16 :goto_1

    .line 184
    :cond_2
    iget-boolean v1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    goto :goto_1

    .line 186
    :cond_3
    iget v1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 189
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->getWindowManagerBrightnessOverride()F

    move-result v1

    .line 188
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 192
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->getTemporaryScreenBrightness()F

    move-result v1

    .line 191
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    goto :goto_1

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAutomaticBrightnessStrategyValid(Lcom/android/server/display/brightness/StrategySelectionRequest;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    goto :goto_1

    .line 197
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    if-eqz v1, :cond_7

    .line 199
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getOffloadScreenBrightness()F

    move-result v1

    .line 198
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    goto :goto_1

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAutoBrightnessFallbackStrategyValid()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    goto :goto_1

    .line 206
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    goto :goto_1

    .line 190
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 211
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->constructStrategySelectionNotifyRequest(Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->postProcess(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    .line 216
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing the DisplayBrightnessStrategy from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for display "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    const-string v1, "DisplayBrightnessStrategySelector"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    :cond_c
    return-object v0
.end method

.method public setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 294
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-interface {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->allowAutoBrightnessInDoze()Z

    move-result p1

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    :cond_0
    return-void
.end method

.method public final shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    if-nez p0, :cond_1

    iget p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 357
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
