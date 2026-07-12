.class public abstract Lcom/android/server/devicepolicy/PolicySerializer;
.super Ljava/lang/Object;
.source "PolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
.end method

.method public abstract saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
.end method
