module default {
  ### Declared Types
  abstract type Timestamped {
    required property timestamp -> datetime {
      default := datetime_current()
    }
  }
  abstract type Named {
    required property name -> str {
      delegated constraint exclusive;
    }
  }

  type Address {
    property street -> str;
    required link city -> City;
    required link state -> State;
    required link country -> Country;
  }
  type City extending Named {}
  type State extending Named {}
  type Country extending Named {}
};
