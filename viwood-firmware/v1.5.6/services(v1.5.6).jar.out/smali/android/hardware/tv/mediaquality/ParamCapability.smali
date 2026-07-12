.class public Landroid/hardware/tv/mediaquality/ParamCapability;
.super Ljava/lang/Object;
.source "ParamCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/ParamCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

.field public isSupported:Z

.field public name:B

.field public range:Landroid/hardware/tv/mediaquality/ParameterRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/hardware/tv/mediaquality/ParamCapability$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/ParamCapability$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 67
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/ParamCapability;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 68
    iget-object v1, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-virtual {p0, v1}, Landroid/hardware/tv/mediaquality/ParamCapability;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 73
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 74
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 48
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9

    .line 49
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    :goto_0
    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 59
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    goto :goto_0

    .line 59
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    iput-object v2, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    goto :goto_0

    .line 59
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_7
    :try_start_4
    sget-object v2, Landroid/hardware/tv/mediaquality/ParameterRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/mediaquality/ParameterRange;

    iput-object v2, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    goto :goto_0

    .line 59
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 48
    :cond_9
    :try_start_5
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a

    .line 59
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-byte v1, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-boolean v1, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 36
    iget-object v1, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
