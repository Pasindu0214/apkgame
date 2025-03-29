.class public Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;
.super Ljava/lang/Object;
.source "SPDSettings.java"


# static fields
.field public static prefs:La/b/a/k;


# direct methods
.method public static get()La/b/a/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->prefs:La/b/a/k;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    const-string v1, "settings.xml"

    invoke-interface {v0, v1}, La/b/a/a;->getPreferences(Ljava/lang/String;)La/b/a/k;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->prefs:La/b/a/k;

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->prefs:La/b/a/k;

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 2
    iget-object v0, v0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 2

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;III)I
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 3
    iget-object v0, v0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p2, :cond_1

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    int-to-float p2, p2

    int-to-float v0, v0

    int-to-float p3, p3

    .line 4
    invoke-static {p2, v0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 5
    invoke-static {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 6
    :catch_0
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    return p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 2
    iget-object v0, v0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x7fffffff

    if-le v1, v2, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static put(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 2
    invoke-virtual {v0}, La/b/a/m/a/t;->a()V

    .line 3
    iget-object v0, v0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object p0

    check-cast p0, La/b/a/m/a/t;

    invoke-virtual {p0}, La/b/a/m/a/t;->b()V

    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 10
    invoke-virtual {v0}, La/b/a/m/a/t;->a()V

    .line 11
    iget-object v0, v0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object p0

    check-cast p0, La/b/a/m/a/t;

    invoke-virtual {p0}, La/b/a/m/a/t;->b()V

    return-void
.end method

.method public static put(Ljava/lang/String;Z)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 6
    invoke-virtual {v0}, La/b/a/m/a/t;->a()V

    .line 7
    iget-object v0, v0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object p0

    check-cast p0, La/b/a/m/a/t;

    invoke-virtual {p0}, La/b/a/m/a/t;->b()V

    return-void
.end method
