.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "StoneOfAugmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment$3;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation$WndAugment;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfAugmentation;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    return-void
.end method
