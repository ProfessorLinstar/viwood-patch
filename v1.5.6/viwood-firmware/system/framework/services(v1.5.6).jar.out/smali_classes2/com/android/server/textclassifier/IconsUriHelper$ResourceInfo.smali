.class public final Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
.super Ljava/lang/Object;
.source "IconsUriHelper.java"


# instance fields
.field public final id:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/textclassifier/IconsUriHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method
