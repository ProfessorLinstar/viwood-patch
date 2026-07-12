.class final Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
.super Ljava/lang/Object;
.source "InputController.java"


# static fields
.field public static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mCreationOrderNumber:J

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayId:I

.field public final mInputDeviceId:I

.field public final mName:Ljava/lang/String;

.field public final mPhys:Ljava/lang/String;

.field public final mPtr:J

.field public final mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmName(Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 611
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 631
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 632
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 633
    iput p5, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 634
    iput-object p6, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 635
    iput-object p7, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    .line 636
    iput p8, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    .line 637
    sget-object p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-void
.end method


# virtual methods
.method public getCreationOrderNumber()J
    .locals 2

    .line 661
    iget-wide v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-wide v0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 657
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    return p0
.end method

.method public getInputDeviceId()I
    .locals 0

    .line 669
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    return p0
.end method

.method public getNativePointer()J
    .locals 2

    .line 641
    iget-wide v0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    return-wide v0
.end method

.method public getPhys()Ljava/lang/String;
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 645
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    return p0
.end method
