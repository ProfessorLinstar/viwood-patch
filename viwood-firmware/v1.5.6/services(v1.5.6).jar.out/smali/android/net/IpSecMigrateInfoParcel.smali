.class public Landroid/net/IpSecMigrateInfoParcel;
.super Ljava/lang/Object;
.source "IpSecMigrateInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecMigrateInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final direction:I

.field public final interfaceId:I

.field public final newDestinationAddress:Ljava/lang/String;

.field public final newSourceAddress:Ljava/lang/String;

.field public final oldDestinationAddress:Ljava/lang/String;

.field public final oldSourceAddress:Ljava/lang/String;

.field public final requestId:I

.field public final selAddrFamily:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/net/IpSecMigrateInfoParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$1;

    invoke-direct {v0}, Landroid/net/IpSecMigrateInfoParcel$1;-><init>()V

    sput-object v0, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    .line 96
    iput p2, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    .line 97
    iput p3, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    .line 98
    iput-object p4, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    .line 102
    iput p8, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 7

    .line 106
    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-direct {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;-><init>()V

    .line 107
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 108
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    .line 110
    const-string v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_11

    :try_start_0
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_0

    :goto_0
    add-int/2addr v1, v2

    .line 147
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setRequestId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setSelAddrFamily(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_5

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_4

    goto :goto_0

    .line 145
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setDirection(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_6

    goto :goto_0

    .line 145
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_9

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_8

    goto :goto_0

    .line 145
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_b

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_a

    goto/16 :goto_0

    .line 145
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_b
    :try_start_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_d

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_c

    goto/16 :goto_0

    .line 145
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_d
    :try_start_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_f

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e

    goto/16 :goto_0

    .line 145
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_f
    :try_start_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setInterfaceId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_10

    goto/16 :goto_0

    .line 145
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_11
    :try_start_9
    new-instance v3, Landroid/os/BadParcelableException;

    const-string v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_12

    goto/16 :goto_0

    .line 145
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget p0, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
