.class public final Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "ComponentNamePolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ComponentNamePolicyValue;
    .locals 2

    .line 50
    const-string/jumbo p0, "package-name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v1, "class-name"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Landroid/app/admin/ComponentNamePolicyValue;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/app/admin/ComponentNamePolicyValue;-><init>(Landroid/content/ComponentName;)V

    return-object v0

    .line 55
    :cond_1
    :goto_0
    const-string p0, "ComponentNamePolicySerializer"

    const-string p1, "Error parsing ComponentName policy."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ComponentNamePolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/ComponentName;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string/jumbo p0, "package-name"

    .line 42
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-interface {p1, v1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    const-string p0, "class-name"

    .line 44
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-interface {p1, v1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/ComponentName;)V

    return-void
.end method
