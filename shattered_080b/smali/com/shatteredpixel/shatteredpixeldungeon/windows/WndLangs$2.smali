.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndLangs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$currLang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;->val$currLang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;->val$currLang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 3
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->reviewers:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$2;->val$currLang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 6
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->translators:[Ljava/lang/String;

    if-nez v3, :cond_1

    new-array v3, v2, [Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 8
    :goto_1
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    goto :goto_2

    :cond_2
    const/16 v5, 0x1e

    :goto_2
    const/4 v6, 0x1

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 9
    :goto_3
    array-length v5, v1

    const-string v7, ""

    const-string v8, "-"

    const-string v9, "\n"

    if-lez v5, :cond_6

    .line 10
    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "reviewers"

    invoke-static {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    .line 11
    :goto_4
    array-length v11, v1

    if-ge v10, v11, :cond_5

    if-eqz v4, :cond_4

    .line 12
    rem-int/lit8 v11, v10, 0x2

    if-ne v11, v6, :cond_4

    .line 13
    invoke-static {v7, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v11, v1, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 14
    :cond_4
    invoke-static {v5, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v11, v1, v10

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 15
    :cond_5
    invoke-static {v5, v9}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v7, v9}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    rem-int/lit8 v10, v10, 0x2

    if-ne v10, v6, :cond_7

    invoke-static {v7, v9}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v5, v7

    .line 18
    :cond_7
    :goto_6
    array-length v10, v1

    if-gtz v10, :cond_8

    array-length v10, v3

    if-lez v10, :cond_c

    .line 19
    :cond_8
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "translators"

    invoke-static {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v7, v9}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 21
    :goto_7
    array-length v11, v1

    if-ge v10, v11, :cond_a

    if-eqz v4, :cond_9

    .line 22
    rem-int/lit8 v11, v10, 0x2

    if-ne v11, v6, :cond_9

    .line 23
    invoke-static {v7, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v11, v1, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 24
    :cond_9
    invoke-static {v5, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v11, v1, v10

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 25
    :goto_9
    array-length v11, v3

    if-ge v1, v11, :cond_c

    if-eqz v4, :cond_b

    add-int v11, v1, v10

    .line 26
    rem-int/lit8 v11, v11, 0x2

    if-ne v11, v6, :cond_b

    .line 27
    invoke-static {v7, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v11, v3, v1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 28
    :cond_b
    invoke-static {v5, v8}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v11, v3, v1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 29
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TOAST:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v5}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v5

    invoke-direct {v3, v2, v2, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>(IIILcom/watabou/noosa/NinePatch;)V

    const/16 v5, 0x41

    if-eqz v4, :cond_d

    const/16 v6, 0x87

    goto :goto_b

    :cond_d
    const/16 v6, 0x41

    :goto_b
    const/4 v8, 0x6

    .line 31
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "credits"

    .line 32
    invoke-static {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    const v0, 0x33bb33

    .line 33
    invoke-virtual {v8, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    int-to-float v0, v6

    .line 34
    iget v9, v8, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v0, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    const/4 v10, 0x0

    .line 35
    invoke-virtual {v8, v0, v10}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 36
    invoke-virtual {v3, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v11

    .line 38
    invoke-virtual {v11, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 39
    invoke-virtual {v11, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    add-float/2addr v1, v9

    invoke-virtual {v11, v10, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 41
    invoke-virtual {v3, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    if-eqz v4, :cond_e

    .line 42
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 44
    invoke-virtual {v0, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;I)V

    const/high16 v1, 0x428c0000    # 70.0f

    .line 45
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v4, 0x41080000    # 8.5f

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 46
    invoke-virtual {v3, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    :cond_e
    invoke-virtual {v11}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v6, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    .line 48
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
