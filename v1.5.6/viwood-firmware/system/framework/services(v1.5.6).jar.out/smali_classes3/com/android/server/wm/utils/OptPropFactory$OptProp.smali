.class public Lcom/android/server/wm/utils/OptPropFactory$OptProp;
.super Ljava/lang/Object;
.source "OptPropFactory.java"


# instance fields
.field public final mCondition:Ljava/util/function/BooleanSupplier;

.field public final mPropertyName:Ljava/lang/String;

.field public mValue:I

.field public final mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;


# direct methods
.method public static synthetic $r8$lambda$LEekx7VQZnJLvMrbsKhxYb-WShI()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->create(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->create(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 128
    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;

    .line 129
    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method public static create(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 2

    .line 136
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    new-instance v1, Lcom/android/server/wm/utils/OptPropFactory$OptProp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;-><init>(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    return-object v0
.end method

.method public static create(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 1

    .line 142
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;-><init>(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 3

    .line 223
    iget v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, -0x2

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;

    invoke-interface {v1}, Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 226
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 227
    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    goto :goto_0

    .line 228
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 229
    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    goto :goto_0

    .line 231
    :cond_1
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read opt property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OptProp"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 238
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    return p0
.end method

.method public isFalse()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public shouldEnableWithOptOutOverrideAndProperty(Z)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public shouldEnableWithOverrideAndProperty(Z)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method
