.class public final Landroid/hardware/tv/mediaquality/ParameterDefaultValue;
.super Ljava/lang/Object;
.source "ParameterDefaultValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/ParameterDefaultValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/ParameterDefaultValue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .locals 0

    .line 187
    iput p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    .line 188
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 181
    const-string/jumbo p0, "stringDefault"

    return-object p0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_1
    const-string p0, "doubleDefault"

    return-object p0

    .line 179
    :cond_2
    const-string/jumbo p0, "longDefault"

    return-object p0

    .line 178
    :cond_3
    const-string p0, "intDefault"

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getDoubleDefault()D
    .locals 2

    const/4 v0, 0x2

    .line 76
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 77
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntDefault()I
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 47
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLongDefault()J
    .locals 2

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 62
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getStringDefault()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 91
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_assertTag(I)V

    .line 92
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    .line 36
    iget p0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 151
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    return-void

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    return-void

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 117
    iget p2, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget p2, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getStringDefault()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getDoubleDefault()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void

    .line 123
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getLongDefault()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    .line 120
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->getIntDefault()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
