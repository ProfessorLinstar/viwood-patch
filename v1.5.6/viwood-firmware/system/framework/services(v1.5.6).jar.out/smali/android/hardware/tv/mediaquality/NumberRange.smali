.class public final Landroid/hardware/tv/mediaquality/NumberRange;
.super Ljava/lang/Object;
.source "NumberRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/NumberRange;",
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

    .line 136
    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/NumberRange$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/NumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/NumberRange-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

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

    .line 237
    iput p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    .line 238
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    .line 231
    const-string p0, "doubleValuesSupported"

    return-object p0

    .line 233
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

    .line 230
    :cond_1
    const-string/jumbo p0, "longValuesSupported"

    return-object p0

    .line 229
    :cond_2
    const-string p0, "intValuesSupported"

    return-object p0

    .line 228
    :cond_3
    const-string p0, "doubleMinMax"

    return-object p0

    .line 227
    :cond_4
    const-string/jumbo p0, "longMinMax"

    return-object p0

    .line 226
    :cond_5
    const-string p0, "intMinMax"

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getDoubleMinMax()[D
    .locals 1

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 79
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    return-object p0
.end method

.method public getDoubleValuesSupported()[D
    .locals 1

    const/4 v0, 0x5

    .line 123
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 124
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    return-object p0
.end method

.method public getIntMinMax()[I
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 49
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getIntValuesSupported()[I
    .locals 1

    const/4 v0, 0x3

    .line 93
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 94
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getLongMinMax()[J
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 64
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    return-object p0
.end method

.method public getLongValuesSupported()[J
    .locals 1

    const/4 v0, 0x4

    .line 108
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    .line 109
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 38
    iget p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1

    .line 204
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void

    .line 207
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

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 199
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 194
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void

    .line 188
    :cond_3
    const-class v2, [D

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 189
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void

    .line 183
    :cond_4
    const-class v2, [J

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 184
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void

    .line 178
    :cond_5
    const-class v2, [I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 149
    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleValuesSupported()[D

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongValuesSupported()[J

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntValuesSupported()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    .line 158
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleMinMax()[D

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongMinMax()[J

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    .line 152
    :cond_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntMinMax()[I

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void
.end method
