.class public Lcom/android/server/hdmi/HdmiCecConfig$Setting;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# instance fields
.field public mAllowedValues:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

.field public final mName:Ljava/lang/String;

.field public final mUserConfigurable:Z

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    .line 219
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    .line 220
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    .line 221
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    return-void
.end method


# virtual methods
.method public getAllowedValues()Ljava/util/List;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    return-object p0
.end method

.method public getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz v0, :cond_0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CEC setup for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' setting. Setting has no default value."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserConfigurable()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mUserConfigurable:Z

    return p0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    const-string/jumbo p0, "string"

    return-object p0

    .line 231
    :cond_0
    const-string p0, "int"

    return-object p0
.end method

.method public registerValue(III)V
    .locals 2

    .line 271
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    return-void
.end method

.method public final registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 250
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mAllowedValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 252
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    if-eqz p2, :cond_0

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' as a default for \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': Setting already has a default (\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    const-string p1, "HdmiCecConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->mDefaultValue:Lcom/android/server/hdmi/HdmiCecConfig$Value;

    :cond_1
    return-void
.end method

.method public registerValue(Ljava/lang/String;II)V
    .locals 2

    .line 266
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Lcom/android/server/hdmi/HdmiCecConfig$Value;II)V

    return-void
.end method
