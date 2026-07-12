.class public Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public mClipDataUris:Ljava/util/List;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mCreatorPackage:Ljava/lang/String;

.field public final mCreatorUid:I

.field public final mData:Landroid/net/Uri;

.field public final mFlags:I

.field public final mPackage:Ljava/lang/String;

.field public final mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 19496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19497
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    .line 19498
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 19499
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 19500
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 19501
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 19502
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 19503
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 19504
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0xc3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 19505
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19507
    invoke-virtual {p1}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19509
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19510
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 19511
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 19512
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 19531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 19532
    :cond_1
    check-cast p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 19533
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 19534
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 19535
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 19536
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 19537
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 19538
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 19539
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    .line 19540
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 10

    .line 19545
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 19546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 19545
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
