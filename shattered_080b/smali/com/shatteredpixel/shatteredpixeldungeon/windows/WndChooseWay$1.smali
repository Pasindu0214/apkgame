.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndChooseWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;

.field public final synthetic val$tome:Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;

.field public final synthetic val$way1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->val$tome:Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->val$way1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->val$tome:Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChooseWay$1;->val$way1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/TomeOfMastery;->choose(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;)V

    return-void
.end method
