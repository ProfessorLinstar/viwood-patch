.class public final Lcom/android/server/display/brightness/BrightnessReason;
.super Ljava/lang/Object;
.source "BrightnessReason.java"


# instance fields
.field public mModifier:I

.field public mReason:I

.field public mTag:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    return-void
.end method


# virtual methods
.method public addModifier(I)V
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 102
    instance-of v0, p1, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/BrightnessReason;

    .line 106
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-ne v0, v2, :cond_2

    .line 108
    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getModifier()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return p0
.end method

.method public getReason()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 113
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :pswitch_0
    const-string p0, "doze_manual"

    return-object p0

    .line 239
    :pswitch_1
    const-string/jumbo p0, "offload"

    return-object p0

    .line 237
    :pswitch_2
    const-string p0, "follower"

    return-object p0

    .line 235
    :pswitch_3
    const-string/jumbo p0, "screen_off_brightness_sensor"

    return-object p0

    .line 233
    :pswitch_4
    const-string p0, "boost"

    return-object p0

    .line 231
    :pswitch_5
    const-string/jumbo p0, "temporary"

    return-object p0

    .line 229
    :pswitch_6
    const-string/jumbo p0, "override"

    return-object p0

    .line 227
    :pswitch_7
    const-string/jumbo p0, "screen_off"

    return-object p0

    .line 225
    :pswitch_8
    const-string p0, "automatic"

    return-object p0

    .line 223
    :pswitch_9
    const-string p0, "doze_default"

    return-object p0

    .line 221
    :pswitch_a
    const-string p0, "doze"

    return-object p0

    .line 219
    :pswitch_b
    const-string/jumbo p0, "manual"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public set(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    if-nez p1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 88
    :cond_2
    iget-object p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->setTag(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setModifier(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x40

    if-eqz v0, :cond_0

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness modifier out of bounds: 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return-void
.end method

.method public setReason(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return-void

    .line 192
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness reason out of bounds: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTag(Ljava/lang/CharSequence;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 141
    const-string p1, " auto_adj"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 144
    const-string p1, " low_pwr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_3
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 147
    const-string p1, " dim"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    .line 150
    const-string p1, " hdr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_5
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 153
    const-string p1, " throttled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_6
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    .line 156
    const-string p1, " lux_lower_bound"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_7
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    .line 159
    const-string p0, " stylus_under_use"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_9

    add-int/lit8 p0, p0, -0x2

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 165
    :cond_9
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
