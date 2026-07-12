.class public final Lcom/android/server/devicepolicy/IntegerPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "IntegerPolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/IntegerPolicyValue;
    .locals 2

    const/4 p0, 0x0

    .line 48
    :try_start_0
    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    const-string/jumbo v1, "value"

    .line 49
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 51
    const-string v0, "IntegerPolicySerializer"

    const-string v1, "Error parsing Integer policy value"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/IntegerPolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;)V
    .locals 1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string/jumbo p0, "value"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;)V

    return-void
.end method
